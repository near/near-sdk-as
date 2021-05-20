export declare const DEFAULT_RUNTIME_CONFIG: {
    storage_amount_per_byte: string;
    transaction_costs: {
        action_receipt_creation_config: {
            send_sir: number;
            send_not_sir: number;
            execution: number;
        };
        data_receipt_creation_config: {
            base_cost: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
            cost_per_byte: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
        };
        action_creation_config: {
            create_account_cost: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
            deploy_contract_cost: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
            deploy_contract_cost_per_byte: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
            function_call_cost: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
            function_call_cost_per_byte: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
            transfer_cost: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
            stake_cost: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
            add_key_cost: {
                full_access_cost: {
                    send_sir: number;
                    send_not_sir: number;
                    execution: number;
                };
                function_call_cost: {
                    send_sir: number;
                    send_not_sir: number;
                    execution: number;
                };
                function_call_cost_per_byte: {
                    send_sir: number;
                    send_not_sir: number;
                    execution: number;
                };
            };
            delete_key_cost: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
            delete_account_cost: {
                send_sir: number;
                send_not_sir: number;
                execution: number;
            };
        };
        storage_usage_config: {
            num_bytes_account: number;
            num_extra_bytes_record: number;
        };
        burnt_gas_reward: number[];
        pessimistic_gas_price_inflation_ratio: number[];
    };
    wasm_config: {
        ext_costs: {
            base: number;
            contract_compile_base: number;
            contract_compile_bytes: number;
            read_memory_base: number;
            read_memory_byte: number;
            write_memory_base: number;
            write_memory_byte: number;
            read_register_base: number;
            read_register_byte: number;
            write_register_base: number;
            write_register_byte: number;
            utf8_decoding_base: number;
            utf8_decoding_byte: number;
            utf16_decoding_base: number;
            utf16_decoding_byte: number;
            sha256_base: number;
            sha256_byte: number;
            keccak256_base: number;
            keccak256_byte: number;
            keccak512_base: number;
            keccak512_byte: number;
            log_base: number;
            log_byte: number;
            storage_write_base: number;
            storage_write_key_byte: number;
            storage_write_value_byte: number;
            storage_write_evicted_byte: number;
            storage_read_base: number;
            storage_read_key_byte: number;
            storage_read_value_byte: number;
            storage_remove_base: number;
            storage_remove_key_byte: number;
            storage_remove_ret_value_byte: number;
            storage_has_key_base: number;
            storage_has_key_byte: number;
            storage_iter_create_prefix_base: number;
            storage_iter_create_prefix_byte: number;
            storage_iter_create_range_base: number;
            storage_iter_create_from_byte: number;
            storage_iter_create_to_byte: number;
            storage_iter_next_base: number;
            storage_iter_next_key_byte: number;
            storage_iter_next_value_byte: number;
            touching_trie_node: number;
            promise_and_base: number;
            promise_and_per_promise: number;
            promise_return: number;
            validator_stake_base: number;
            validator_total_stake_base: number;
        };
        grow_mem_cost: number;
        regular_op_cost: number;
        limit_config: {
            max_gas_burnt: number;
            max_gas_burnt_view: number;
            max_stack_height: number;
            initial_memory_pages: number;
            max_memory_pages: number;
            registers_memory_limit: number;
            max_register_size: number;
            max_number_registers: number;
            max_number_logs: number;
            max_total_log_length: number;
            max_total_prepaid_gas: number;
            max_actions_per_receipt: number;
            max_number_bytes_method_names: number;
            max_length_method_name: number;
            max_arguments_length: number;
            max_length_returned_data: number;
            max_contract_size: number;
            max_length_storage_key: number;
            max_length_storage_value: number;
            max_promises_per_function_call_action: number;
            max_number_input_data_dependencies: number;
        };
    };
    account_creation_config: {
        min_allowed_top_level_account_length: number;
        registrar_account_id: string;
    };
};
